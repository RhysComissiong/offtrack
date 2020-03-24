classdef offtrack
% Aim: Identify test points for measurement of off track performance.
% 1)	Identify the x furthest points away from camtrack indices
% 2)	Cluster the neighbourhood of points around each centroid x
% 3)	Plot each off track cluster against the camtrack


%changelog
%----------------------------------------------
%24MAR20         BM      Initial specification.



    
    
    properties 
        
        points              % all points from dataset defined as matrix with rows as
                            % cartesian coordinates [x, y]
        
        idxpoints           % index points for analysis as matrix with rows as
                            % cartesian coordinates [x, y]
        
        numberpoints        % scalar value representing number points to cluster around centre
        
        
        
    end
        

    properties (Dependent)
    
        centres             %list of point centres and cluster of points around these

            
    end
    
    
    
    methods
        
        function obj = offtrack(data, idx) %#ok<INUSD>
            %constructor method that creates object from data file
            
            
            % define index points
            % obj.idxpoints = idx


            % bring in relevant data points
            

        end

        
        function distance(obj, x, y) %#ok<INUSD>
            % calculates distance between point x and y accepts an array as
            % arguments.  if x is a array a distance is calculated for
            % each point in the array relative to the point or group of
            % points specfied by y.  if a single argument is entered as a
            % array or scalar x then the distance is calculated with
            % reference to the index points.
            
            switch varargin
                
                case length(varargin) == 2
                    %case when only one set of points is provided
                    %(comparison is by default with idxpoints).  all points
                    %in x are compared individually with the idxpoints
                    
                    
                case length(varargin) == 3
                    %case when two sets of points are provided.  all individual 
                    %points within x are compared with the group of points
                    %represented by y.
            end
            
        end
        
        
        function rank(obj) %#ok<MANU>
            %function to rank points based on distance
            

        end

        
    %plotting -------------------------------------------------------------
        function plotscatter(obj)  %#ok<MANU>
            % scatter plot showing ivo/evc points and camtrack as defined by
            % idx points.  if idxpoints are not defined an error is thrown.
        
        
        end
        
        
        function plotiris(obj)  %#ok<MANU>
            % plot showing central point and circle with radius
            % representing distance of furthest point from centre.
            
        end
        
        
        
        function plotarea(obj)  %#ok<MANU>
           %plot showing area covered by clusters of points relative to total 
           % area covered by all points.
            
        end
        
        
        
    % get and set methods for dependant properties -----------------------
        
        function obj = get.centres(obj)
            
            %obj.centres = something
            
        end
        
    end
    
    
    
    % static methods (not sure if we need these) --------------------------
    methods(Static)
        
        
        
        
    end
     
    
    
end